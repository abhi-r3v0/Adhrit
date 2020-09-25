.class public final Lo/oldestEventFileFirst;
.super Ljavax/net/ssl/HttpsURLConnection;
.source ""


# instance fields
.field private final zzha:Lo/writeTextFile;

.field private final zzhb:Ljavax/net/ssl/HttpsURLConnection;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/HttpsURLConnection;Lo/aY;Lo/aN;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 2
    iput-object p1, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    .line 3
    new-instance v0, Lo/writeTextFile;

    invoke-direct {v0, p1, p2, p3}, Lo/writeTextFile;-><init>(Ljava/net/HttpURLConnection;Lo/aY;Lo/aN;)V

    iput-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2}, Lo/writeTextFile;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    .line 7
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->disconnect()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .line 34
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    .line 26
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentLengthLong()J
    .locals 2

    .line 27
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    .line 29
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    .line 38
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    .line 17
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 20
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2, p3}, Lo/writeTextFile;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    .line 21
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2}, Lo/writeTextFile;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 1

    .line 22
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2, p3}, Lo/writeTextFile;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 79
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    .line 39
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    .line 12
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .line 41
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 84
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setConnectTimeout(I)V

    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    .line 56
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setDoInput(Z)V

    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    .line 58
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setDoOutput(Z)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2}, Lo/writeTextFile;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    .line 64
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2}, Lo/writeTextFile;->setIfModifiedSince(J)V

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setReadTimeout(I)V

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1, p2}, Lo/writeTextFile;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzhb:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0, p1}, Lo/writeTextFile;->setUseCaches(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lo/oldestEventFileFirst;->zzha:Lo/writeTextFile;

    invoke-virtual {v0}, Lo/writeTextFile;->usingProxy()Z

    move-result v0

    return v0
.end method
