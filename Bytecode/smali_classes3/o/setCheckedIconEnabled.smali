.class final Lo/setCheckedIconEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setChipIconSize;

.field private final synthetic extraCallback:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCheckedIconEnabled;->ICustomTabsCallback:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setCheckedIconEnabled;->extraCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setCheckedIconEnabled;->ICustomTabsCallback:Lo/setChipIconSize;

    iget-object v1, p0, Lo/setCheckedIconEnabled;->extraCallback:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lo/setChipIconSize;->onPostMessage(Lo/setChipIconSize;Landroid/os/Bundle;)V

    return-void
.end method
