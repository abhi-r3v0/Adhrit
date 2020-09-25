.class public final Lo/getSwipeDirs$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSwipeDirs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getSwipeDirs$onPostMessage$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadhaarInputDialog$Companion;",
        "",
        "()V",
        "PERMISSION_DENIED",
        "",
        "PITCH",
        "TIMEOUT",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadhaarInputDialog;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$StashWorkFlowExtra;",
        "flowType",
        "StashAadhaarInputExtra",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 207
    invoke-direct {p0}, Lo/getSwipeDirs$onPostMessage;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/onDetach$write;Ljava/lang/String;)Lo/getSwipeDirs;
    .locals 3

    const-string v0, "flowType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lo/getSwipeDirs;

    invoke-direct {v0}, Lo/getSwipeDirs;-><init>()V

    .line 214
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    new-instance v2, Lo/getSwipeDirs$onPostMessage$ICustomTabsCallback;

    invoke-direct {v2, p0, p1}, Lo/getSwipeDirs$onPostMessage$ICustomTabsCallback;-><init>(Lo/onDetach$write;Ljava/lang/String;)V

    check-cast v2, Landroid/os/Parcelable;

    const-string p0, "extra"

    .line 1016
    invoke-static {v1, v2, p0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method
