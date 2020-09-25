.class final Lo/getChallenge;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ImageHeaderParser$ImageType$onNavigationEvent;


# static fields
.field public static final onPostMessage:Lo/getChallenge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getChallenge;

    invoke-direct {v0}, Lo/getChallenge;-><init>()V

    sput-object v0, Lo/getChallenge;->onPostMessage:Lo/getChallenge;

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
    invoke-static {p1, p2, p3, p4, p5}, Lo/FileUtil;->onPostMessage(IIIII)Z

    move-result p1

    return p1
.end method
