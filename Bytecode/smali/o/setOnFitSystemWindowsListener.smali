.class public final Lo/setOnFitSystemWindowsListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applySupportImageTint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applySupportImageTint<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/dispatchFitSystemWindows;

.field private final onNavigationEvent:Lo/onForwardingStopped;


# direct methods
.method public constructor <init>(Lo/onForwardingStopped;Lo/dispatchFitSystemWindows;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lo/setOnFitSystemWindowsListener;->onNavigationEvent:Lo/onForwardingStopped;

    .line 37
    iput-object p2, p0, Lo/setOnFitSystemWindowsListener;->extraCallback:Lo/dispatchFitSystemWindows;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    check-cast p1, Landroid/net/Uri;

    .line 1049
    iget-object p4, p0, Lo/setOnFitSystemWindowsListener;->onNavigationEvent:Lo/onForwardingStopped;

    .line 1061
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-virtual {p4, p1, v0}, Lo/onForwardingStopped;->onMessageChannelReady(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 1063
    invoke-static {v0, p1}, Lo/onForwardingStopped;->onPostMessage(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    .line 1065
    iget-object p4, p4, Lo/onForwardingStopped;->ICustomTabsCallback:Landroid/content/Context;

    invoke-static {p4, v0, p1}, Lo/onViewAttachedToWindow;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1066
    invoke-static {p1}, Lo/onTouchObserved;->ICustomTabsCallback(Landroid/graphics/drawable/Drawable;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1053
    :cond_0
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 1054
    iget-object p4, p0, Lo/setOnFitSystemWindowsListener;->extraCallback:Lo/dispatchFitSystemWindows;

    invoke-static {p4, p1, p2, p3}, Lo/positionSelectorLikeFocusCompat;->onNavigationEvent(Lo/dispatchFitSystemWindows;Landroid/graphics/drawable/Drawable;II)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    check-cast p1, Landroid/net/Uri;

    .line 2042
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.resource"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
