.class public final Lo/canSafelyMutateDrawable$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;
.implements Lo/canSafelyMutateDrawable$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/canSafelyMutateDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Landroid/net/Uri;",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;",
        "Lo/canSafelyMutateDrawable$onPostMessage<",
        "Landroid/content/res/AssetFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lo/canSafelyMutateDrawable$onNavigationEvent;->extraCallback:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/net/Uri;)Lo/AppCompatImageView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lo/AppCompatImageView<",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 143
    new-instance v0, Lo/AppCompatSeekBar;

    iget-object v1, p0, Lo/canSafelyMutateDrawable$onNavigationEvent;->extraCallback:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lo/AppCompatSeekBar;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "Landroid/net/Uri;",
            "Landroid/content/res/AssetFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance p1, Lo/canSafelyMutateDrawable;

    invoke-direct {p1, p0}, Lo/canSafelyMutateDrawable;-><init>(Lo/canSafelyMutateDrawable$onPostMessage;)V

    return-object p1
.end method
