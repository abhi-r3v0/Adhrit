.class public abstract Lo/getFinanceCharges$onPostMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFinanceCharges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()D
.end method

.method public abstract extraCallback()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract onNavigationEvent()Landroid/net/Uri;
.end method
