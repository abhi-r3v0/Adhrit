.class public final Lo/canSafelyMutateDrawable$extraCallback;
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
    accessFlags = 0x9
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "Landroid/net/Uri;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lo/canSafelyMutateDrawable$onPostMessage<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lo/canSafelyMutateDrawable$extraCallback;->ICustomTabsCallback:Landroid/content/ContentResolver;

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
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Lo/onDraw;

    iget-object v1, p0, Lo/canSafelyMutateDrawable$extraCallback;->ICustomTabsCallback:Landroid/content/ContentResolver;

    invoke-direct {v0, v1, p1}, Lo/onDraw;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

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
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance p1, Lo/canSafelyMutateDrawable;

    invoke-direct {p1, p0}, Lo/canSafelyMutateDrawable;-><init>(Lo/canSafelyMutateDrawable$onPostMessage;)V

    return-object p1
.end method
