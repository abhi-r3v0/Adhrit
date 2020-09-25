.class final Lo/defaultOnMeasure$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/defaultOnMeasure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/google/android/exoplayer2/upstream/cache/SimpleCache;",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/defaultOnMeasure$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/defaultOnMeasure$ICustomTabsCallback;

    invoke-direct {v0}, Lo/defaultOnMeasure$ICustomTabsCallback;-><init>()V

    sput-object v0, Lo/defaultOnMeasure$ICustomTabsCallback;->onPostMessage:Lo/defaultOnMeasure$ICustomTabsCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1090
    new-instance v0, Ljava/io/File;

    sget-object v1, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "context"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1090
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lifestyle/media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1093
    new-instance v1, Lo/VisaPayloadWrapperJsonAdapter;

    const-wide/32 v2, 0x3200000

    invoke-direct {v1, v2, v3}, Lo/VisaPayloadWrapperJsonAdapter;-><init>(J)V

    .line 1097
    new-instance v2, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;

    check-cast v1, Lo/InstrumentAttribute;

    invoke-direct {v2, v0, v1}, Lo/PaymentContainerFragment$initUpi$2$$special$$inlined$executeOnResume$1;-><init>(Ljava/io/File;Lo/InstrumentAttribute;)V

    return-object v2
.end method
