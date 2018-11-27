.class Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi23Impl;
.super Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi21Impl;
.source "CompoundButtonCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundButtonCompatApi23Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
