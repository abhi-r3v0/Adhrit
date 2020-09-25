.class public final Lo/getDisplayOptions;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getDisplayOptions$onMessageChannelReady;,
        Lo/getDisplayOptions$ICustomTabsCallback;,
        Lo/getDisplayOptions$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setNavigationContentDescription<",
        "Landroid/net/Uri;",
        "TData;>;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:I = 0x16


# instance fields
.field private final ICustomTabsCallback:Landroid/content/res/AssetManager;

.field private final extraCallback:Lo/getDisplayOptions$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getDisplayOptions$extraCallback<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Lo/getDisplayOptions$extraCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Lo/getDisplayOptions$extraCallback<",
            "TData;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/getDisplayOptions;->ICustomTabsCallback:Landroid/content/res/AssetManager;

    .line 33
    iput-object p2, p0, Lo/getDisplayOptions;->extraCallback:Lo/getDisplayOptions$extraCallback;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 1

    .line 20
    check-cast p1, Landroid/net/Uri;

    .line 2039
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0x16

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 2040
    new-instance p3, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p4, Lo/setSoftInputMode;

    invoke-direct {p4, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lo/getDisplayOptions;->extraCallback:Lo/getDisplayOptions$extraCallback;

    iget-object v0, p0, Lo/getDisplayOptions;->ICustomTabsCallback:Landroid/content/res/AssetManager;

    invoke-interface {p1, v0, p2}, Lo/getDisplayOptions$extraCallback;->onNavigationEvent(Landroid/content/res/AssetManager;Ljava/lang/String;)Lo/AppCompatImageView;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p3
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    check-cast p1, Landroid/net/Uri;

    .line 1045
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "android_asset"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method
