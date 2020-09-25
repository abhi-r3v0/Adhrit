.class final Lo/HttpException;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ImageHeaderParser$ImageType$onNavigationEvent;


# static fields
.field public static final onNavigationEvent:Lo/HttpException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/HttpException;

    invoke-direct {v0}, Lo/HttpException;-><init>()V

    sput-object v0, Lo/HttpException;->onNavigationEvent:Lo/HttpException;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(IIIII)Z
    .locals 0

    .line 1000
    invoke-static {p1, p2, p3, p4, p5}, Lo/ImageHeaderParser$ImageType;->extraCallback(IIIII)Z

    move-result p1

    return p1
.end method
