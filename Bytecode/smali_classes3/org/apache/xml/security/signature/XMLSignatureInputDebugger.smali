.class public Lorg/apache/xml/security/signature/XMLSignatureInputDebugger;
.super Ljava/lang/Object;


# static fields
.field static final a:Lorg/apache/xml/security/c14n/helper/AttrCompare;


# instance fields
.field private b:Lorg/w3c/dom/Document;

.field private c:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xml/security/c14n/helper/AttrCompare;

    invoke-direct {v0}, Lorg/apache/xml/security/c14n/helper/AttrCompare;-><init>()V

    sput-object v0, Lorg/apache/xml/security/signature/XMLSignatureInputDebugger;->a:Lorg/apache/xml/security/c14n/helper/AttrCompare;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInputDebugger;->b:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInputDebugger;->c:Ljava/io/Writer;

    return-void
.end method
