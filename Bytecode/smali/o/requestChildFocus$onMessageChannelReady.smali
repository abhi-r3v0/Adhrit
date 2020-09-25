.class public final Lo/requestChildFocus$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestChildFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/store/StorePaymentStatusLro$Companion;",
        "",
        "()V",
        "MAX_POLLS",
        "",
        "MIN_LOADER_SEEN_TIME",
        "",
        "POLL_DURATION",
        "RESULT_FAILED",
        "",
        "RESULT_SUCCESS",
        "START",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onPostMessage:Lo/addItemDecoration$onPostMessage;


# instance fields
.field public final extraCallback:Lo/isSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isSet<",
            "Lo/addDependent;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/requestChildFocus$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/requestChildFocus$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    new-instance v0, Lo/isSet;

    sget-object v4, Lo/requestChildFocus$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    sget-object v7, Lo/getPaymentData;->onMessageChannelReady:Lo/optional;

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lo/isSet;-><init>(Landroid/content/Context;Lo/addItemDecoration$onPostMessage;Ljava/lang/String;Landroid/content/Intent;Lo/optional;)V

    iput-object v0, p0, Lo/requestChildFocus$onMessageChannelReady;->extraCallback:Lo/isSet;

    return-void
.end method
