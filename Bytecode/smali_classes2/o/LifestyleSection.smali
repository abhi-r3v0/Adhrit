.class final Lo/LifestyleSection;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final synthetic extraCallback:Lo/LifestyleComponentAsset;


# direct methods
.method constructor <init>(Lo/LifestyleComponentAsset;)V
    .locals 0

    iput-object p1, p0, Lo/LifestyleSection;->extraCallback:Lo/LifestyleComponentAsset;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lo/LifestyleSection;->extraCallback:Lo/LifestyleComponentAsset;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lo/LifestyleComponentAsset;->ICustomTabsCallback(Lo/LifestyleComponentAsset;I)V

    return-void
.end method
