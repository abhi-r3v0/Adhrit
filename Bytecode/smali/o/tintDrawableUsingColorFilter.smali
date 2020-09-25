.class public final Lo/tintDrawableUsingColorFilter;
.super Landroid/content/ContextWrapper;
.source ""


# static fields
.field static final onPostMessage:Lo/access$000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/access$000<",
            "**>;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Lo/ButtonBarLayout;

.field final ICustomTabsCallback$Stub:Lo/setLineHeight;

.field public final asBinder:I

.field public final asInterface:Z

.field final extraCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/access$000<",
            "**>;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lcom/bumptech/glide/Registry;

.field private onRelationshipValidationResult:Lo/setHorizontalGravity;

.field private final onTransact:Lcom/bumptech/glide/Glide$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lo/getPorterDuffColorFilter;

    invoke-direct {v0}, Lo/getPorterDuffColorFilter;-><init>()V

    sput-object v0, Lo/tintDrawableUsingColorFilter;->onPostMessage:Lo/access$000;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/ButtonBarLayout;Lcom/bumptech/glide/Registry;Lo/setContentWidth$ICustomTabsCallback;Lcom/bumptech/glide/Glide$onPostMessage;Ljava/util/Map;Ljava/util/List;Lo/setLineHeight;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/ButtonBarLayout;",
            "Lcom/bumptech/glide/Registry;",
            "Lo/setContentWidth$ICustomTabsCallback;",
            "Lcom/bumptech/glide/Glide$onPostMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lo/access$000<",
            "**>;>;",
            "Ljava/util/List<",
            "Lo/layoutVertical<",
            "Ljava/lang/Object;",
            ">;>;",
            "Lo/setLineHeight;",
            "ZI)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object p2, p0, Lo/tintDrawableUsingColorFilter;->ICustomTabsCallback:Lo/ButtonBarLayout;

    .line 57
    iput-object p3, p0, Lo/tintDrawableUsingColorFilter;->onNavigationEvent:Lcom/bumptech/glide/Registry;

    .line 59
    iput-object p5, p0, Lo/tintDrawableUsingColorFilter;->onTransact:Lcom/bumptech/glide/Glide$onPostMessage;

    .line 60
    iput-object p7, p0, Lo/tintDrawableUsingColorFilter;->onMessageChannelReady:Ljava/util/List;

    .line 61
    iput-object p6, p0, Lo/tintDrawableUsingColorFilter;->extraCallback:Ljava/util/Map;

    .line 62
    iput-object p8, p0, Lo/tintDrawableUsingColorFilter;->ICustomTabsCallback$Stub:Lo/setLineHeight;

    .line 63
    iput-boolean p9, p0, Lo/tintDrawableUsingColorFilter;->asInterface:Z

    .line 64
    iput p10, p0, Lo/tintDrawableUsingColorFilter;->asBinder:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()Lo/setHorizontalGravity;
    .locals 1

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lo/tintDrawableUsingColorFilter;->onRelationshipValidationResult:Lo/setHorizontalGravity;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lo/tintDrawableUsingColorFilter;->onTransact:Lcom/bumptech/glide/Glide$onPostMessage;

    invoke-interface {v0}, Lcom/bumptech/glide/Glide$onPostMessage;->extraCallback()Lo/setHorizontalGravity;

    move-result-object v0

    invoke-virtual {v0}, Lo/measureChildBeforeLayout;->asBinder()Lo/measureChildBeforeLayout;

    move-result-object v0

    check-cast v0, Lo/setHorizontalGravity;

    iput-object v0, p0, Lo/tintDrawableUsingColorFilter;->onRelationshipValidationResult:Lo/setHorizontalGravity;

    .line 76
    :cond_0
    iget-object v0, p0, Lo/tintDrawableUsingColorFilter;->onRelationshipValidationResult:Lo/setHorizontalGravity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
