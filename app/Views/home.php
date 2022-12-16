<?= $this->extend('layout/backend') ?>

<?= $this->section('content') ?>

<section class="section">
    <div class="section-header">
        <h1>Selamat Datang</h1>
    </div>

    <div class="section-body">
        <!-- dinamis -->
        <h2>Sistem Informasi Akutansi - Fauzi Jr</h2>
        <h5>Grafik Infografis</h5>
    </div>

    <div class="row">
        <div class="col-12 col-md-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h4>Jurnal Umum</h4>
                </div>
                <div class="card-body">
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
        <div class="col-12 col-md-6 col-lg-6">
            <div class="card">
                <div class="card-header">
                    <h4>Trend Transaksi</h4>
                </div>
                <div class="card-body">
                    <canvas id="myChart2"></canvas>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="col-24 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>Neraca Saldo</h4>
                </div>
                <div class="card-body">
                    <canvas id="myChart3"></canvas>
                </div>
            </div>
        </div>
        <div class="col-24 col-md-12 col-lg-12">
            <div class="card">
                <div class="card-header">
                    <h4>Neraca Jalur</h4>
                </div>
                <div class="card-body">
                    <canvas id="myChart4"></canvas>
                </div>
            </div>
        </div>
    </div>


</section>

<?= $this->endSection() ?>