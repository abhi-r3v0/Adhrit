.class final Lo/dump$3;
.super Lo/getStateLabel;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dump;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/dump;


# direct methods
.method constructor <init>(Lo/dump;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lo/dump$3;->ICustomTabsCallback:Lo/dump;

    invoke-direct {p0, p2, p3}, Lo/getStateLabel;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    return-void
.end method
