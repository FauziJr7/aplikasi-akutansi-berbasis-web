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

class JurnalUmum extends BaseController
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

        $rowdata = $this->objTransaksi->get_jurnalumum($tglawal, $tglakhir);
        $i = 0;
        $temp1 = '';
        $temp2 = '';

        foreach ($rowdata as $row) {
            $tgl = ($temp1 == $row->tanggal && $temp2 == $row->kwitansi) ? '' : $row->tanggal;
            $temp1 = $row->tanggal;
            $temp2 = $row->kwitansi;
            $rowdata[$i]->tanggal = $tgl;
            $i++;
        }

        $data['dttransaksi'] = $rowdata;
        $data['tglawal'] = $tglawal;
        $data['tglakhir'] = $tglakhir;
        return view('jurnalumum/index', $data);
    }

    public function cetakjupdf()
    {
        $tglawal = $this->request->getVar('tglawal') ? $this->request->getVar('tglawal') : '';
        $tglakhir = $this->request->getVar('tglakhir') ? $this->request->getVar('tglakhir') : '';

        $rowdata = $this->objTransaksi->get_jurnalumum($tglawal, $tglakhir);
        $i = 0;
        $temp1 = '';
        $temp2 = '';

        foreach ($rowdata as $row) {
            $tgl = ($temp1 == $row->tanggal && $temp2 == $row->kwitansi) ? '' : $row->tanggal;
            $temp1 = $row->tanggal;
            $temp2 = $row->kwitansi;
            $rowdata[$i]->tanggal = $tgl;
            $i++;
        }

        $data = [
            'dttransaksi' => $rowdata,
            'tglawal' => $tglawal,
            'tglakhir' => $tglakhir,
        ];

        $html = view('jurnalumum/cetakjupdf', $data);

        // create new PDF document
        $pdf = new TCPDF('P', PDF_UNIT, 'A4', true, 'UTF-8', false);
        // remove default header/footer
        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        // set margins
        $pdf->SetMargins(30, 3, 3);

        // set font
        $pdf->SetFont('helvetica', '', 8);
        // add a page
        $pdf->AddPage();
        // Print text using writeHTMLCell()
        $pdf->writeHTML($html, true, false, true, false, '');
        // This method has several options, check the source code documentation for more information.
        $this->response->setContentType('application/pdf');
        $pdf->Output('jurnalumum.pdf', 'I');
    }
    public function cetakjuexcel()
    {
        $tglawal = $this->request->getVar('tglawal') ? $this->request->getVar('tglawal') : '';
        $tglakhir = $this->request->getVar('tglakhir') ? $this->request->getVar('tglakhir') : '';

        $rowdata = $this->objTransaksi->get_jurnalumum($tglawal, $tglakhir);
        $i = 0;

        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        $sheet->setCellValue('A1', 'Tanggal');
        $sheet->setCellValue('B1', 'Keterangan');
        $sheet->setCellValue('C1', 'Reff');
        $sheet->setCellValue('D1', 'Debit');
        $sheet->setCellValue('E1', 'Kredit');

        $column = 2;
        foreach ($rowdata as $key => $value) {
            $sheet->setCellValue('A' . $column, $value->tanggal);
            $sheet->setCellValue('B' . $column, $value->nama_akun3);
            $sheet->setCellValue('C' . $column, $value->kode_akun3);
            $sheet->setCellValue('D' . $column, $value->debit);
            $sheet->setCellValue('E' . $column, $value->kredit);
            $column++;
        }

        $writer = new Xlsx($spreadsheet);
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Cache-Control:max-age=0');
        $writer->save('php://output');
        exit();
    }
}





        // $spreadsheet = new Spreadsheet();
        // $sheet = $spreadsheet->getActiveSheet();

        // $sheet->setCellValue('A1', "Data Barang Masuk");
        // $sheet->mergeCells('A1:D1');
        // $sheet->getStyle('A1')->getFont()->setBold(true);

        // $sheet->setCellValue('A3', "No");
        // $sheet->setCellValue('B3', "No.Faktur");
        // $sheet->setCellValue('C3', "Tanggal");
        // $sheet->setCellValue('D3', "Total Harga");

        // $no = 1;
        // $numRow = 4;

        // foreach ($rowdata as $row) {
        //     $tgl = ($temp1 == $row->tanggal && $temp2 == $row->kwitansi) ? '' : $row->tanggal;
        //     $temp1 = $row->tanggal;
        //     $temp2 = $row->kwitansi;
        //     $rowdata[$i]->tanggal = $tgl;
        //     $i++;
        // }

        // foreach ($rowdata->getResultArray() as $row) :
        //     $sheet->setCellValue('A' . $numRow, $no);
        //     $sheet->setCellValue('B' . $numRow, $row['rowdata']);
        //     $sheet->setCellValue('C' . $numRow, $row['tglawal']);
        //     $sheet->setCellValue('D' . $numRow, $row['tglakhir']);

        //     $no++;
        //     $numRow++;
        // endforeach;

        // $sheet->getDefaultRowDimension()->setRowHeight(-1);
        // $sheet->getPageSetup()->setOrientation(\PhpOffice\PhpSpreadsheet\Worksheet\PageSetup::ORIENTATION_LANDSCAPE);
        // $sheet->setTitle("Laporan Barang Masuk");

        // header('Content-Type : application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        // header('Cache-Control:max-age=0');

        // $writer = new Xlsx($spreadsheet);
        // $writer->save('php://output');