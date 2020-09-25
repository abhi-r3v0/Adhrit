.class final Lo/obtainHolderInfo$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainHolderInfo;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "onShow"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/obtainHolderInfo;

.field private synthetic onMessageChannelReady:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lo/obtainHolderInfo;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lo/obtainHolderInfo$onNavigationEvent;->ICustomTabsCallback:Lo/obtainHolderInfo;

    iput-object p2, p0, Lo/obtainHolderInfo$onNavigationEvent;->onMessageChannelReady:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 116
    iget-object p1, p0, Lo/obtainHolderInfo$onNavigationEvent;->ICustomTabsCallback:Lo/obtainHolderInfo;

    iget-object v0, p0, Lo/obtainHolderInfo$onNavigationEvent;->onMessageChannelReady:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/obtainHolderInfo;->ICustomTabsCallback(Lo/obtainHolderInfo;ZLandroid/app/Dialog;)V

    return-void
.end method
