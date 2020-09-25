.class Lo/logDataCollectionState$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDataCollectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private final action:Ljava/lang/String;

.field private final data:Ljava/lang/Object;

.field private final onComplete:Lo/getDataCollectionValueFromManifest;

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lo/logDataCollectionState$onNavigationEvent;->action:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lo/logDataCollectionState$onNavigationEvent;->path:Ljava/util/List;

    .line 156
    iput-object p3, p0, Lo/logDataCollectionState$onNavigationEvent;->data:Ljava/lang/Object;

    .line 157
    iput-object p4, p0, Lo/logDataCollectionState$onNavigationEvent;->onComplete:Lo/getDataCollectionValueFromManifest;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$1;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lo/logDataCollectionState$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method static synthetic access$200(Lo/logDataCollectionState$onNavigationEvent;)Lo/getDataCollectionValueFromManifest;
    .locals 0

    .line 146
    iget-object p0, p0, Lo/logDataCollectionState$onNavigationEvent;->onComplete:Lo/getDataCollectionValueFromManifest;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lo/logDataCollectionState$onNavigationEvent;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lo/logDataCollectionState$onNavigationEvent;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getOnComplete()Lo/getDataCollectionValueFromManifest;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/logDataCollectionState$onNavigationEvent;->onComplete:Lo/getDataCollectionValueFromManifest;

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lo/logDataCollectionState$onNavigationEvent;->path:Ljava/util/List;

    return-object v0
.end method
