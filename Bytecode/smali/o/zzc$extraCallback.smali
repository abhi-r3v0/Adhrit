.class public final Lo/zzc$extraCallback;
.super Lo/setPaddingRelative;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/zzc;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/widget/FullScreenDialogFragment$onCreateDialog$1",
        "Lcom/dreamplug/androidapp/ui/widget/FullScreenAlertDialog;",
        "onBackPressed",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/zzc;


# direct methods
.method constructor <init>(Lo/zzc;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lo/zzc$extraCallback;->ICustomTabsCallback:Lo/zzc;

    invoke-direct {p0, p2}, Lo/setPaddingRelative;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 10
    iget-object v0, p0, Lo/zzc$extraCallback;->ICustomTabsCallback:Lo/zzc;

    invoke-virtual {v0}, Lo/zzc;->onRelationshipValidationResult()Lo/addWrites;

    return-void
.end method
