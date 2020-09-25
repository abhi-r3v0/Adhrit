.class final Lo/getBottomDecorationHeight$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getBottomDecorationHeight;-><init>(Landroid/app/Application;)V
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
        "TS;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012X\u0010\u0002\u001aT\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006 \u0008**\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0018\u00010\u0003j\u0014\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006\u0018\u0001`\u00070\u0003j\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005R\u00020\u0006`\u0007H\n\u00a2\u0006\u0002\u0008\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/util/HashMap;",
        "",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse$BanksDetail;",
        "Lcom/dreamplug/androidapp/onboarding/adapters/BankDetailsResponse;",
        "Lkotlin/collections/HashMap;",
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
.field private synthetic onNavigationEvent:Lo/getBottomDecorationHeight;


# direct methods
.method constructor <init>(Lo/getBottomDecorationHeight;)V
    .locals 0

    iput-object p1, p0, Lo/getBottomDecorationHeight$1;->onNavigationEvent:Lo/getBottomDecorationHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 1031
    iget-object p1, p0, Lo/getBottomDecorationHeight$1;->onNavigationEvent:Lo/getBottomDecorationHeight;

    .line 2027
    iget p1, p1, Lo/getBottomDecorationHeight;->onNavigationEvent:I

    if-lez p1, :cond_0

    .line 1032
    iget-object p1, p0, Lo/getBottomDecorationHeight$1;->onNavigationEvent:Lo/getBottomDecorationHeight;

    invoke-virtual {p1}, Lo/getBottomDecorationHeight;->extraCallback()V

    :cond_0
    return-void
.end method
