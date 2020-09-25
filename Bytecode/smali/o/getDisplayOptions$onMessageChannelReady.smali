.class public final Lo/getDisplayOptions$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;
.implements Lo/getDisplayOptions$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDisplayOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lo/getDisplayOptions$extraCallback<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lo/getDisplayOptions$onMessageChannelReady;->onPostMessage:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance p1, Lo/getDisplayOptions;

    iget-object v0, p0, Lo/getDisplayOptions$onMessageChannelReady;->onPostMessage:Landroid/content/res/AssetManager;

    invoke-direct {p1, v0, p0}, Lo/getDisplayOptions;-><init>(Landroid/content/res/AssetManager;Lo/getDisplayOptions$extraCallback;)V

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/content/res/AssetManager;Ljava/lang/String;)Lo/AppCompatImageView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lo/AppCompatImageView<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Lo/getPopupContext;

    invoke-direct {v0, p1, p2}, Lo/getPopupContext;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method
