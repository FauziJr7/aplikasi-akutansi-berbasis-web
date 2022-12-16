<?php

namespace App\Controllers;

use TCPDF;
use App\Models\ModelAkun3;
use App\Models\ModelNilai;
use App\Models\ModelStatus;
use App\Models\ModelTransaksi;
use App\Controllers\BaseController;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Posting extends BaseController
{
    function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->objTransaksi = new ModelTransaksi();
        $this->objNilai = new ModelNilai();
        $this->objAkun3 = new ModelAkun3();
        $this->objStatus = new ModelStatus();
    }

    public function index()
    {
        $tglawal = $this->request->getVar('tglawal') ? $this->request->getVar('tglawal') : '';
        $tglakhir = $this->request->getVar('tglakhir') ? $this->request->getVar('tglakhir') : '';
        $kode_akun3 = $this->request->getVar('kode_akun3') ? $this->request->getVar('kode_akun3') : '';

        $rowdata = $this->objTransaksi->get_posting($tglawal, $tglakhir, $kode_akun3);
        $data['dttransaksi'] = $rowdata;
        $data['tglawal'] = $tglawal;
        $data['tglakhir'] = $tglakhir;
        $data['kode_akun3'] = $kode_akun3;
        $data['dtakun3'] = $this->objAkun3->ambilrelasi();
        return view('posting/index', $data);
    }

    public function postingpdf()
    {
        $tglawal = $this->request->getVar('tglawal') ? $this->request->getVar('tglawal') : '';
        $tglakhir = $this->request->getVar('tglakhir') ? $this->request->getVar('tglakhir') : '';
        $kode_akun3 = $this->request->getVar('kode_akun3') ? $this->request->getVar('kode_akun3') : '';

        $rowdata = $this->objTransaksi->get_posting($tglawal, $tglakhir, $kode_akun3);
        $data['dttransaksi'] = $rowdata;
        $data['tglawal'] = $tglawal;
        $data['tglakhir'] = $tglakhir;
        $data['kode_akun3'] = $kode_akun3;
        $data['dtakun3'] = $this->objAkun3->ambilrelasi();

        $html = view('posting/postingpdf', $data);

        $pdf = new TCPDF('P', PDF_UNIT, 'A4', true, 'UTF-8', false);
        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        $pdf->SetMargins(30, 3, 3);
        $pdf->SetFont('helvetica', '', 8);
        $pdf->AddPage();
        $pdf->writeHTML($html, true, false, true, false, '');
        $this->response->setContentType('application/pdf');
        $pdf->Output('posting.pdf', 'I');
    }
    public function postingexcel()
    {
        $tglawal = $this->request->getVar('tglawal') ? $this->request->getVar('tglawal') : '';
        $tglakhir = $this->request->getVar('tglakhir') ? $this->request->getVar('tglakhir') : '';
        $kode_akun3 = $this->request->getVar('kode_akun3') ? $this->request->getVar('kode_akun3') : '';

        $rowdata = $this->objTransaksi->get_posting($tglawal, $tglakhir, $kode_akun3);
        $data['dttransaksi'] = $rowdata;
        $data['tglawal'] = $tglawal;
        $data['tglakhir'] = $tglakhir;
        $data['kode_akun3'] = $kode_akun3;
        $data['dtakun3'] = $this->objAkun3->ambilrelasi();

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        $sheet->setCellValue('A1', 'Tanggal');
        $sheet->setCellValue('B1', 'Keterangan');
        $sheet->setCellValue('C1', 'Reff');
        $sheet->setCellValue('D1', 'Debit');
        $sheet->setCellValue('E1', 'Kredit');
        $sheet->setCellValue('F1', 'Saldo Debit');
        $sheet->setCellValue('G1', 'Saldo Kredit');

        $column = 2;
        foreach ($rowdata as $key => $value) {
            $sheet->setCellValue('A' . $column, $value->tanggal);
            $sheet->setCellValue('B' . $column, $value->kode_akun3);
            $sheet->setCellValue('C' . $column, $value->ketjurnal);
            $sheet->setCellValue('D' . $column, $value->debit);
            $sheet->setCellValue('E' . $column, $value->kredit);
            $sheet->setCellValue('F' . $column, $value->debit);
            $sheet->setCellValue('G' . $column, $value->kredit);
            $column++;
        }

        $writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Cache-Control:max-age=0');
        $writer->save('php://output');
        exit();
    }
}
