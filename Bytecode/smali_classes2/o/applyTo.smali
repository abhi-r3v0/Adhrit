.class public final Lo/applyTo;
.super Lo/getSelected;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getSelected<",
        "Lo/PlutusOrderJsonAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private final extraCallback:Lo/updateRangeInNode;

.field private final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/updateRangeInNode;)V
    .locals 1

    invoke-direct {p0}, Lo/getSelected;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/applyTo;->onNavigationEvent:Ljava/lang/Object;

    iput-object p1, p0, Lo/applyTo;->extraCallback:Lo/updateRangeInNode;

    return-void
.end method

.method static synthetic extraCallback(Lo/applyTo;)Lo/updateRangeInNode;
    .locals 0

    iget-object p0, p0, Lo/applyTo;->extraCallback:Lo/updateRangeInNode;

    return-object p0
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    iget-object v0, p0, Lo/applyTo;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/applyTo;->ICustomTabsCallback:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/applyTo;->ICustomTabsCallback:Z

    new-instance v1, Lo/Tag;

    invoke-direct {v1, p0}, Lo/Tag;-><init>(Lo/applyTo;)V

    new-instance v2, Lo/SuggestedAmount$$Parcelable;

    invoke-direct {v2}, Lo/SuggestedAmount$$Parcelable;-><init>()V

    invoke-virtual {p0, v1, v2}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    new-instance v1, Lo/TagJsonAdapter;

    invoke-direct {v1, p0}, Lo/TagJsonAdapter;-><init>(Lo/applyTo;)V

    new-instance v2, Lo/BillerJsonAdapter;

    invoke-direct {v2, p0}, Lo/BillerJsonAdapter;-><init>(Lo/applyTo;)V

    invoke-virtual {p0, v1, v2}, Lo/getSelected;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
