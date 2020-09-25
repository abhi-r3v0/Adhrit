.class public final Lo/ShortCircuitInfo;
.super Lo/ShortCircuitInfoJsonAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ShortCircuitInfo$extraCallback;,
        Lo/ShortCircuitInfo$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/ShortCircuitInfo;


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/generateLink;",
            ">;"
        }
    .end annotation
.end field

.field public final asBinder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onRelationshipValidationResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:Lo/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 33
    new-instance v13, Lo/ShortCircuitInfo;

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 43
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const-string v1, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lo/ShortCircuitInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/p$a;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    sput-object v13, Lo/ShortCircuitInfo;->onMessageChannelReady:Lo/ShortCircuitInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/p$a;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$onNavigationEvent;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Lo/p$a;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lo/generateLink;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0, p1, p2, p10}, Lo/ShortCircuitInfoJsonAdapter;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 219
    invoke-static {p3, p4, p5, p6, p7}, Lo/ShortCircuitInfo;->ICustomTabsCallback(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 218
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->ICustomTabsCallback:Ljava/util/List;

    .line 220
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    .line 221
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->onNavigationEvent:Ljava/util/List;

    .line 222
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->onPostMessage:Ljava/util/List;

    .line 223
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->asBinder:Ljava/util/List;

    .line 224
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 225
    iput-object p8, p0, Lo/ShortCircuitInfo;->onTransact:Lo/p$a;

    if-eqz p9, :cond_0

    .line 227
    invoke-static {p9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/ShortCircuitInfo;->asInterface:Ljava/util/List;

    .line 228
    invoke-static {p11}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->onRelationshipValidationResult:Ljava/util/Map;

    .line 229
    invoke-static {p12}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/ShortCircuitInfo;->ICustomTabsService:Ljava/util/List;

    return-void
.end method

.method private static ICustomTabsCallback(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$onNavigationEvent;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 282
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 283
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/ShortCircuitInfo$onNavigationEvent;

    iget-object v2, v2, Lo/ShortCircuitInfo$onNavigationEvent;->onPostMessage:Landroid/net/Uri;

    .line 284
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 285
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {p1, v0}, Lo/ShortCircuitInfo;->onMessageChannelReady(Ljava/util/List;Ljava/util/List;)V

    .line 289
    invoke-static {p2, v0}, Lo/ShortCircuitInfo;->onMessageChannelReady(Ljava/util/List;Ljava/util/List;)V

    .line 290
    invoke-static {p3, v0}, Lo/ShortCircuitInfo;->onMessageChannelReady(Ljava/util/List;Ljava/util/List;)V

    .line 291
    invoke-static {p4, v0}, Lo/ShortCircuitInfo;->onMessageChannelReady(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private static extraCallback(Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I",
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 317
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 318
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 319
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 320
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getInBitmapString;

    .line 321
    iget v6, v5, Lo/getInBitmapString;->onMessageChannelReady:I

    if-ne v6, p1, :cond_0

    iget v5, v5, Lo/getInBitmapString;->onPostMessage:I

    if-ne v5, v2, :cond_0

    .line 322
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;)Lo/ShortCircuitInfo;
    .locals 13

    .line 259
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lo/ShortCircuitInfo$onNavigationEvent;->onNavigationEvent(Landroid/net/Uri;)Lo/ShortCircuitInfo$onNavigationEvent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 260
    new-instance p0, Lo/ShortCircuitInfo;

    .line 262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 264
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 265
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 266
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 267
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 271
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v11

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lo/ShortCircuitInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/p$a;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object p0
.end method

.method private static onMessageChannelReady(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ShortCircuitInfo$extraCallback;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 297
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ShortCircuitInfo$extraCallback;

    iget-object v1, v1, Lo/ShortCircuitInfo$extraCallback;->onNavigationEvent:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 298
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/util/List;)Lo/ShortCircuitInfo;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;)",
            "Lo/ShortCircuitInfo;"
        }
    .end annotation

    .line 234
    new-instance v13, Lo/ShortCircuitInfo;

    iget-object v1, p0, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    iget-object v2, p0, Lo/ShortCircuitInfoJsonAdapter;->mayLaunchUrl:Ljava/util/List;

    iget-object v0, p0, Lo/ShortCircuitInfo;->extraCallback:Ljava/util/List;

    const/4 v3, 0x0

    .line 237
    invoke-static {v0, v3, p1}, Lo/ShortCircuitInfo;->extraCallback(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v0, p0, Lo/ShortCircuitInfo;->onPostMessage:Ljava/util/List;

    const/4 v5, 0x1

    .line 240
    invoke-static {v0, v5, p1}, Lo/ShortCircuitInfo;->extraCallback(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lo/ShortCircuitInfo;->asBinder:Ljava/util/List;

    const/4 v6, 0x2

    .line 241
    invoke-static {v0, v6, p1}, Lo/ShortCircuitInfo;->extraCallback(Ljava/util/List;ILjava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lo/ShortCircuitInfo;->onTransact:Lo/p$a;

    iget-object v9, p0, Lo/ShortCircuitInfo;->asInterface:Ljava/util/List;

    iget-boolean v10, p0, Lo/ShortCircuitInfoJsonAdapter;->updateVisuals:Z

    iget-object v11, p0, Lo/ShortCircuitInfo;->onRelationshipValidationResult:Ljava/util/Map;

    iget-object v12, p0, Lo/ShortCircuitInfo;->ICustomTabsService:Ljava/util/List;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lo/ShortCircuitInfo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lo/p$a;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13
.end method

.method public final synthetic onNavigationEvent(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/ShortCircuitInfo;->extraCallback(Ljava/util/List;)Lo/ShortCircuitInfo;

    move-result-object p1

    return-object p1
.end method
