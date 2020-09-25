.class Lo/ICustomTabsService$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# direct methods
.method static onPostMessage(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    .locals 0

    .line 482
    invoke-virtual {p0, p1}, Landroid/view/ContextThemeWrapper;->applyOverrideConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method
