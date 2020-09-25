.class final Lo/getOsFile$onPostMessage;
.super Lo/getOsFile$onMessageChannelReady;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getOsFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# static fields
.field static final onPostMessage:Lo/getOsFile$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1107
    new-instance v0, Lo/getOsFile$onPostMessage;

    invoke-direct {v0}, Lo/getOsFile$onPostMessage;-><init>()V

    sput-object v0, Lo/getOsFile$onPostMessage;->onPostMessage:Lo/getOsFile$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.none()"

    .line 1110
    invoke-direct {p0, v0}, Lo/getOsFile$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    return-void
.end method
