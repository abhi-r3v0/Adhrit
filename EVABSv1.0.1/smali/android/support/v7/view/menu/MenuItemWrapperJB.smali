.class Landroid/support/v7/view/menu/MenuItemWrapperJB;
.super Landroid/support/v7/view/menu/MenuItemWrapperICS;
.source "MenuItemWrapperJB.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/support/v7/view/menu/MenuItemWrapperICS;-><init>(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)V

    return-void
.end method


# virtual methods
.method createActionProviderWrapper(Landroid/view/ActionProvider;)Landroid/support/v7/view/menu/MenuItemWrapperICS$ActionProviderWrapper;
    .locals 2

    .line 43
    new-instance v0, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperJB;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperJB$ActionProviderWrapperJB;-><init>(Landroid/support/v7/view/menu/MenuItemWrapperJB;Landroid/content/Context;Landroid/view/ActionProvider;)V

    return-object v0
.end method
