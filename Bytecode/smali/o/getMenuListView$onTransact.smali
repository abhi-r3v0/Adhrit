.class final Lo/getMenuListView$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuListView;->extraCallback(Lo/inflate$extraCallback;)V
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
.field private synthetic onPostMessage:Lo/createAbtInstance;


# direct methods
.method constructor <init>(Lo/createAbtInstance;)V
    .locals 0

    iput-object p1, p0, Lo/getMenuListView$onTransact;->onPostMessage:Lo/createAbtInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lo/getMenuListView$onTransact;->onPostMessage:Lo/createAbtInstance;

    .line 1159
    iget-object v0, p1, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 1161
    invoke-virtual {p1}, Lo/createAbtInstance;->ICustomTabsCallback()Landroid/widget/FrameLayout;

    .line 1163
    :cond_0
    iget-object p1, p1, Lo/createAbtInstance;->onTransact:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const-string v0, "bottomSheetDialog.behavior"

    .line 163
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->extraCallback(I)V

    return-void
.end method
