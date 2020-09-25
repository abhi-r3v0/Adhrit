.class public abstract Lo/dump;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Landroid/content/ComponentName;Lo/getStateLabel;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 33
    new-instance v0, Lo/dump$3;

    .line 34
    invoke-static {p2}, Landroid/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;

    move-result-object p2

    invoke-direct {v0, p0, p2, p1}, Lo/dump$3;-><init>(Lo/dump;Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lo/dump;->extraCallback(Landroid/content/ComponentName;Lo/getStateLabel;)V

    return-void
.end method
