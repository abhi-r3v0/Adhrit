.class Lcom/revo/evabs/BadComm$AsyncLogin;
.super Landroid/os/AsyncTask;
.source "BadComm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/revo/evabs/BadComm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLogin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field conn:Ljava/net/HttpURLConnection;

.field pdLoading:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/revo/evabs/BadComm;

.field tv:Landroid/widget/TextView;

.field url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/revo/evabs/BadComm;)V
    .locals 1

    .line 64
    iput-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->this$0:Lcom/revo/evabs/BadComm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 65
    iget-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->this$0:Lcom/revo/evabs/BadComm;

    const v0, 0x7f0a011d

    invoke-virtual {p1, v0}, Lcom/revo/evabs/BadComm;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->tv:Landroid/widget/TextView;

    .line 66
    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->this$0:Lcom/revo/evabs/BadComm;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->pdLoading:Landroid/app/ProgressDialog;

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->url:Ljava/net/URL;

    return-void
.end method

.method synthetic constructor <init>(Lcom/revo/evabs/BadComm;Lcom/revo/evabs/BadComm$1;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/revo/evabs/BadComm$AsyncLogin;-><init>(Lcom/revo/evabs/BadComm;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revo/evabs/BadComm$AsyncLogin;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 86
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://evabs.000webhost.in/reboot.php"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :try_start_1
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    .line 96
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    const v1, 0x249f0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 97
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 98
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 102
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 105
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "GETIT"

    const/4 v2, 0x0

    aget-object p1, p1, v2

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 113
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 115
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 116
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 117
    iget-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :try_start_2
    iget-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 133
    iget-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 134
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :cond_1
    :try_start_3
    const-string p1, "unsuccessful"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 151
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "exception"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    :goto_1
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1

    :catch_1
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, "exception"

    return-object p1

    :catch_2
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    const-string p1, "exception"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .line 64
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/revo/evabs/BadComm$AsyncLogin;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    const-string v0, "Here\'s The soooper flaggie"

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->pdLoading:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 75
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->pdLoading:Landroid/app/ProgressDialog;

    const-string v1, "\tLoading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->pdLoading:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 77
    iget-object v0, p0, Lcom/revo/evabs/BadComm$AsyncLogin;->pdLoading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
