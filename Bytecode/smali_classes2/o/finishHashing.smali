.class public final Lo/finishHashing;
.super Lo/endRange;
.source ""


# static fields
.field public static final onPostMessage:Lo/finishHashing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lo/finishHashing;

    invoke-direct {v0}, Lo/finishHashing;-><init>()V

    sput-object v0, Lo/finishHashing;->onPostMessage:Lo/finishHashing;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/endRange;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "NOP"

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
