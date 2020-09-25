.class public final Lo/canSafelyMutateDrawable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setNavigationContentDescription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/canSafelyMutateDrawable$onNavigationEvent;,
        Lo/canSafelyMutateDrawable$extraCallback;,
        Lo/canSafelyMutateDrawable$onMessageChannelReady;,
        Lo/canSafelyMutateDrawable$onPostMessage;
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
.field private static final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final extraCallback:Lo/canSafelyMutateDrawable$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/canSafelyMutateDrawable$onPostMessage<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "file"

    const-string v2, "android.resource"

    const-string v3, "content"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/canSafelyMutateDrawable;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lo/canSafelyMutateDrawable$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/canSafelyMutateDrawable$onPostMessage<",
            "TData;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/canSafelyMutateDrawable;->extraCallback:Lo/canSafelyMutateDrawable$onPostMessage;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;IILo/applyFrameworkTintUsingColorFilter;)Lo/setNavigationContentDescription$ICustomTabsCallback;
    .locals 0

    .line 28
    check-cast p1, Landroid/net/Uri;

    .line 2048
    new-instance p2, Lo/setNavigationContentDescription$ICustomTabsCallback;

    new-instance p3, Lo/setSoftInputMode;

    invoke-direct {p3, p1}, Lo/setSoftInputMode;-><init>(Ljava/lang/Object;)V

    iget-object p4, p0, Lo/canSafelyMutateDrawable;->extraCallback:Lo/canSafelyMutateDrawable$onPostMessage;

    invoke-interface {p4, p1}, Lo/canSafelyMutateDrawable$onPostMessage;->extraCallback(Landroid/net/Uri;)Lo/AppCompatImageView;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lo/setNavigationContentDescription$ICustomTabsCallback;-><init>(Lo/AppCompatImageHelper;Lo/AppCompatImageView;)V

    return-object p2
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Z
    .locals 1

    .line 28
    check-cast p1, Landroid/net/Uri;

    .line 1053
    sget-object v0, Lo/canSafelyMutateDrawable;->ICustomTabsCallback:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
