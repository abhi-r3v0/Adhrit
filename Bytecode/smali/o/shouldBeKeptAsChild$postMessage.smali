.class final Lo/shouldBeKeptAsChild$postMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldBeKeptAsChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/List<",
        "+",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/utils/model/CommonBankListResponse$BanksDetail;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/shouldBeKeptAsChild;

.field private synthetic onNavigationEvent:Lo/snapFromFling$asBinder;


# direct methods
.method constructor <init>(Lo/shouldBeKeptAsChild;Lo/snapFromFling$asBinder;)V
    .locals 0

    iput-object p1, p0, Lo/shouldBeKeptAsChild$postMessage;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    iput-object p2, p0, Lo/shouldBeKeptAsChild$postMessage;->onNavigationEvent:Lo/snapFromFling$asBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 1332
    iget-object p1, p0, Lo/shouldBeKeptAsChild$postMessage;->ICustomTabsCallback:Lo/shouldBeKeptAsChild;

    iget-object v0, p0, Lo/shouldBeKeptAsChild$postMessage;->onNavigationEvent:Lo/snapFromFling$asBinder;

    .line 2046
    iget-object v0, v0, Lo/snapFromFling$asBinder;->ICustomTabsCallback:Lo/postShow;

    .line 1332
    invoke-static {p1, v0}, Lo/shouldBeKeptAsChild;->onPostMessage(Lo/shouldBeKeptAsChild;Lo/postShow;)V

    return-void
.end method
