.class public Lorg/apache/xml/security/keys/content/x509/XMLX509SubjectName;
.super Lorg/apache/xml/security/utils/SignatureElementProxy;

# interfaces
.implements Lorg/apache/xml/security/keys/content/x509/XMLX509DataContent;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/security/utils/ElementProxy;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xml/security/utils/RFC2253Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "X509SubjectName"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/xml/security/keys/content/x509/XMLX509SubjectName;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/apache/xml/security/keys/content/x509/XMLX509SubjectName;

    invoke-virtual {p1}, Lorg/apache/xml/security/keys/content/x509/XMLX509SubjectName;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/xml/security/keys/content/x509/XMLX509SubjectName;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/security/keys/content/x509/XMLX509SubjectName;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method
