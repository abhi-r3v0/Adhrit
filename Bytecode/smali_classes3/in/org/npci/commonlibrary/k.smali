.class Lin/org/npci/commonlibrary/k;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field private static a:Ljava/util/List;

.field private static b:Lin/org/npci/commonlibrary/j;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lin/org/npci/commonlibrary/k;->a:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lin/org/npci/commonlibrary/k;->b:Lin/org/npci/commonlibrary/j;

    sput-object v0, Lin/org/npci/commonlibrary/k;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0, v1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lin/org/npci/commonlibrary/f;

    sget-object v0, Lin/org/npci/commonlibrary/g;->d:Lin/org/npci/commonlibrary/g;

    invoke-direct {p1, v0}, Lin/org/npci/commonlibrary/f;-><init>(Lin/org/npci/commonlibrary/g;)V

    throw p1
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    sget-object v0, Lin/org/npci/commonlibrary/k;->a:Ljava/util/List;

    return-object v0
.end method

.method public characters([CII)V
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lin/org/npci/commonlibrary/k;->c:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const p2, 0x19e5f

    const/4 v0, 0x1

    if-eq p1, p2, :cond_1

    const p2, 0x1d572652

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "keyValue"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "key"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, Lin/org/npci/commonlibrary/k;->b:Lin/org/npci/commonlibrary/j;

    sget-object p2, Lin/org/npci/commonlibrary/k;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lin/org/npci/commonlibrary/j;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    sget-object p1, Lin/org/npci/commonlibrary/k;->a:Ljava/util/List;

    sget-object p2, Lin/org/npci/commonlibrary/k;->b:Lin/org/npci/commonlibrary/j;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected finalize()V
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "KeyParser Destroyed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p1

    const p2, 0x19e5f

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "key"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lin/org/npci/commonlibrary/j;

    invoke-direct {p1}, Lin/org/npci/commonlibrary/j;-><init>()V

    sput-object p1, Lin/org/npci/commonlibrary/k;->b:Lin/org/npci/commonlibrary/j;

    const-string p2, "ki"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/org/npci/commonlibrary/j;->a(Ljava/lang/String;)V

    sget-object p1, Lin/org/npci/commonlibrary/k;->b:Lin/org/npci/commonlibrary/j;

    const-string p2, "owner"

    invoke-interface {p4, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/org/npci/commonlibrary/j;->b(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
