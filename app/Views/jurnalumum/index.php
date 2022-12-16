<?= $this->extend('layout/backend') ?>

<?= $this->section('content') ?>
<title>SIA-Fauzi &mdash; Jurnal Umum</title>
<?= $this->endSection() ?>

<?= $this->section('content') ?>

<section class="section">
    <div class="section-header">
        <h1>Laporan Jurnal Umum</h1>
    </div>


    <div class="section-body">
        <div class="card-body">
            <form action="<?= site_url('jurnalumum') ?>" method="POST">
                <?= csrf_field() ?>
                <div class="row g-3">
                    <div class="col">
                        <input type="date" class="form-control" name="tglawal" value="<?= $tglawal ?>">
                    </div>
                    <div class="col">
                        <input type="date" class="form-control" name="tglakhir" value="<?= $tglakhir ?>">
                    </div>
                    <div class="col">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-list"> Tampilkan</i></button>
                        <i><input type="submit" class="btn btn-danger" formtarget="_blank" formaction="jurnalumum/cetakjupdf" value="Cetak PDF"></i>
                        <input type="submit" class="btn btn-success" formtarget="_blank" formaction="jurnalumum/cetakjuexcel" value="Cetak EXCEL">
                    </div>
                </div>
            </form>
        </div>
        <div class="card-body p-4">
            <div class="table-responsive">
                <table class="table table-striped table-md">
                    <thead class="khusus">
                        <tr>
                            <td class="text-left">Tanggal</td>
                            <td class="text-left">Keterangan</td>
                            <td class="text-left">Ref</td>
                            <td class="text-right">Debit</td>
                            <td class="text-right">Kredit</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($dttransaksi as $key => $value) : ?>
                            <tr>
                                <td><?= $value->tanggal ?></td>
                                <td><?= $value->nama_akun3 ?></td>
                                <td><?= $value->kode_akun3 ?></td>
                                <td class="text-right"><?= number_format($value->debit, 0, ",", ",") ?></td>
                                <td class="text-right"><?= number_format($value->kredit, 0, ",", ",") ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<?= $this->endSection() ?>