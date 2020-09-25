.class Lo/logDataCollectionState$asInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDataCollectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "asInterface"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private onComplete:Lo/getDataCollectionValueFromManifest;

.field private request:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sent:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lo/getDataCollectionValueFromManifest;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lo/logDataCollectionState$asInterface;->action:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lo/logDataCollectionState$asInterface;->request:Ljava/util/Map;

    .line 122
    iput-object p3, p0, Lo/logDataCollectionState$asInterface;->onComplete:Lo/getDataCollectionValueFromManifest;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$1;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2, p3}, Lo/logDataCollectionState$asInterface;-><init>(Ljava/lang/String;Ljava/util/Map;Lo/getDataCollectionValueFromManifest;)V

    return-void
.end method

.method static synthetic access$100(Lo/logDataCollectionState$asInterface;)Lo/getDataCollectionValueFromManifest;
    .locals 0

    .line 112
    iget-object p0, p0, Lo/logDataCollectionState$asInterface;->onComplete:Lo/getDataCollectionValueFromManifest;

    return-object p0
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/logDataCollectionState$asInterface;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getOnComplete()Lo/getDataCollectionValueFromManifest;
    .locals 1

    .line 134
    iget-object v0, p0, Lo/logDataCollectionState$asInterface;->onComplete:Lo/getDataCollectionValueFromManifest;

    return-object v0
.end method

.method public getRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/logDataCollectionState$asInterface;->request:Ljava/util/Map;

    return-object v0
.end method

.method public markSent()V
    .locals 1

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lo/logDataCollectionState$asInterface;->sent:Z

    return-void
.end method

.method public wasSent()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lo/logDataCollectionState$asInterface;->sent:Z

    return v0
.end method
