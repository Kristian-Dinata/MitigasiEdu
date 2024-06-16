from flask import Flask, render_template

app = Flask(__name__)

# Route untuk halaman utama
@app.route('/')
def index():
    return render_template('index.html')

# Route untuk halaman tentang
@app.route('/tentang')
def tentang():
    return render_template('tentang.html')

# Route untuk halaman langkah-langkah
@app.route('/langkah')
def langkah():
    return render_template('langkah.html')

# Route untuk halaman jenis bencana
@app.route('/jenis')
def jenis():
    return render_template('jenis.html')

# Route untuk halaman proyek
@app.route('/proyek')
def proyek():
    return render_template('proyek.html')

# Route untuk halaman staff
@app.route('/staff')
def staff():
    return render_template('staff.html')

# Route untuk halaman kontak
@app.route('/kontak')
def kontak():
    return render_template('kontak.html')

if __name__ == '__main__':
    app.run(debug=True)
