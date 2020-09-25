.class public final Lo/getDropdownItemCount;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDropdownItemCount$extraCallback;,
        Lo/getDropdownItemCount$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Landroid/net/Uri;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/getDropdownItemCount;->onNavigationEvent:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 1

    .line 19
    check-cast p1, Landroid/net/Uri;

    .line 2032
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lo/getDropdownItemCount$ICustomTabsCallback;

    iget-object v0, p0, Lo/getDropdownItemCount;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {p4, v0, p1}, Lo/getDropdownItemCount$ICustomTabsCallback;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p2, p3, p4}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 0

    .line 19
    check-cast p1, Landroid/net/Uri;

    .line 1037
    invoke-static {p1}, Lo/extraCallback;->onNavigationEvent(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method
