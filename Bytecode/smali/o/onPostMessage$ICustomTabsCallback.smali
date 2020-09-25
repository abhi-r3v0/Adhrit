.class public abstract Lo/onPostMessage$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/lang/CharSequence;
.end method

.method public abstract onMessageChannelReady()Landroid/view/View;
.end method

.method public abstract onNavigationEvent()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract onPostMessage()Ljava/lang/CharSequence;
.end method
