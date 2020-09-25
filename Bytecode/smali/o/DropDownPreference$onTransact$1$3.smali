.class final Lo/DropDownPreference$onTransact$1$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DropDownPreference$onTransact$1;->onLayoutChange(Landroid/view/View;IIIIIIII)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onPostMessage:Lo/DropDownPreference$onTransact$1;


# direct methods
.method constructor <init>(Lo/DropDownPreference$onTransact$1;I)V
    .locals 0

    iput-object p1, p0, Lo/DropDownPreference$onTransact$1$3;->onPostMessage:Lo/DropDownPreference$onTransact$1;

    iput p2, p0, Lo/DropDownPreference$onTransact$1$3;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 136
    iget-object v0, p0, Lo/DropDownPreference$onTransact$1$3;->onPostMessage:Lo/DropDownPreference$onTransact$1;

    iget-object v0, v0, Lo/DropDownPreference$onTransact$1;->ICustomTabsCallback:Lo/DropDownPreference$onTransact;

    iget-object v0, v0, Lo/DropDownPreference$onTransact;->onMessageChannelReady:Lo/DropDownPreference;

    .line 1064
    iget-object v0, v0, Lo/DropDownPreference;->onMessageChannelReady:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    const-string/jumbo v1, "sheetBehavior"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget v1, p0, Lo/DropDownPreference$onTransact$1$3;->extraCallback:I

    .line 1702
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->onMessageChannelReady(I)V

    return-void
.end method
