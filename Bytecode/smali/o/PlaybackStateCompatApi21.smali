.class public final Lo/PlaybackStateCompatApi21;
.super Lo/getCustomAction;
.source ""


# static fields
.field private static final asBinder:Ljava/lang/String;


# instance fields
.field public final ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PlaybackStateCompatApi21;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/PlaybackStateCompat$RepeatMode;

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/setActions;

.field public onTransact:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    .line 53
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/PlaybackStateCompatApi21;->asBinder:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PlaybackStateCompat$RepeatMode;",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$Actions;",
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 125
    invoke-direct/range {v0 .. v5}, Lo/PlaybackStateCompatApi21;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;B)V

    return-void
.end method

.method private constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PlaybackStateCompat$RepeatMode;",
            "Ljava/lang/String;",
            "Lo/PlaybackStateCompat$Actions;",
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;B)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Lo/getCustomAction;-><init>()V

    .line 133
    iput-object p1, p0, Lo/PlaybackStateCompatApi21;->extraCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 134
    iput-object p2, p0, Lo/PlaybackStateCompatApi21;->onNavigationEvent:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    .line 136
    iput-object p4, p0, Lo/PlaybackStateCompatApi21;->onPostMessage:Ljava/util/List;

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lo/PlaybackStateCompatApi21;->onPostMessage:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/PlaybackStateCompatApi21;->asInterface:Ljava/util/List;

    const/4 p1, 0x0

    .line 145
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 146
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/PlaybackStateCompat$CustomAction$1;

    .line 1088
    iget-object p2, p2, Lo/PlaybackStateCompat$CustomAction$1;->ICustomTabsCallback:Ljava/util/UUID;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 147
    iget-object p3, p0, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object p3, p0, Lo/PlaybackStateCompatApi21;->asInterface:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PlaybackStateCompat$RepeatMode;",
            "Ljava/util/List<",
            "+",
            "Lo/PlaybackStateCompat$CustomAction$1;",
            ">;)V"
        }
    .end annotation

    .line 112
    sget-object v3, Lo/PlaybackStateCompat$Actions;->ICustomTabsCallback:Lo/PlaybackStateCompat$Actions;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lo/PlaybackStateCompatApi21;-><init>(Lo/PlaybackStateCompat$RepeatMode;Ljava/lang/String;Lo/PlaybackStateCompat$Actions;Ljava/util/List;B)V

    return-void
.end method

.method public static extraCallback(Lo/PlaybackStateCompatApi21;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PlaybackStateCompatApi21;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4106
    iget-object p0, p0, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 278
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompatApi21;

    .line 5087
    iget-object v1, v1, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    .line 280
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static onNavigationEvent(Lo/PlaybackStateCompatApi21;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PlaybackStateCompatApi21;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 3087
    iget-object v0, p0, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    .line 240
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 242
    invoke-static {p0}, Lo/PlaybackStateCompatApi21;->extraCallback(Lo/PlaybackStateCompatApi21;)Ljava/util/Set;

    move-result-object v0

    .line 243
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 3106
    :cond_1
    iget-object v0, p0, Lo/PlaybackStateCompatApi21;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 252
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/PlaybackStateCompatApi21;

    .line 255
    invoke-static {v1, p1}, Lo/PlaybackStateCompatApi21;->onNavigationEvent(Lo/PlaybackStateCompatApi21;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 4087
    :cond_3
    iget-object p0, p0, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    .line 265
    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/setActions;
    .locals 6

    .line 183
    iget-boolean v0, p0, Lo/PlaybackStateCompatApi21;->onTransact:Z

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lo/onSupportActionModeStarted;

    invoke-direct {v0, p0}, Lo/onSupportActionModeStarted;-><init>(Lo/PlaybackStateCompatApi21;)V

    .line 187
    iget-object v1, p0, Lo/PlaybackStateCompatApi21;->extraCallback:Lo/PlaybackStateCompat$RepeatMode;

    .line 1349
    iget-object v1, v1, Lo/PlaybackStateCompat$RepeatMode;->onNavigationEvent:Lo/supportShouldUpRecreateTask;

    .line 187
    invoke-interface {v1, v0}, Lo/supportShouldUpRecreateTask;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 2107
    iget-object v0, v0, Lo/onSupportActionModeStarted;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$Builder;

    .line 188
    iput-object v0, p0, Lo/PlaybackStateCompatApi21;->onRelationshipValidationResult:Lo/setActions;

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {}, Lo/setActiveQueueItemId;->onPostMessage()Lo/setActiveQueueItemId;

    move-result-object v0

    sget-object v1, Lo/PlaybackStateCompatApi21;->asBinder:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/PlaybackStateCompatApi21;->onMessageChannelReady:Ljava/util/List;

    const-string v5, ", "

    .line 191
    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Already enqueued work ids (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v0, v1, v2}, Lo/setActiveQueueItemId;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    iget-object v0, p0, Lo/PlaybackStateCompatApi21;->onRelationshipValidationResult:Lo/setActions;

    return-object v0
.end method
