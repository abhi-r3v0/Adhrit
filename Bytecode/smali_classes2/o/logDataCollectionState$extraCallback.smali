.class Lo/logDataCollectionState$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/logDataCollectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final hashFunction:Lo/storeDataCollectionValueInSharedPreferences;

.field private final query:Lo/logDataCollectionState$onPostMessage;

.field private final resultCallback:Lo/getDataCollectionValueFromManifest;

.field private final tag:Ljava/lang/Long;


# direct methods
.method private constructor <init>(Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$onPostMessage;Ljava/lang/Long;Lo/storeDataCollectionValueInSharedPreferences;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lo/logDataCollectionState$extraCallback;->resultCallback:Lo/getDataCollectionValueFromManifest;

    .line 89
    iput-object p2, p0, Lo/logDataCollectionState$extraCallback;->query:Lo/logDataCollectionState$onPostMessage;

    .line 90
    iput-object p4, p0, Lo/logDataCollectionState$extraCallback;->hashFunction:Lo/storeDataCollectionValueInSharedPreferences;

    .line 91
    iput-object p3, p0, Lo/logDataCollectionState$extraCallback;->tag:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$onPostMessage;Ljava/lang/Long;Lo/storeDataCollectionValueInSharedPreferences;Lo/logDataCollectionState$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lo/logDataCollectionState$extraCallback;-><init>(Lo/getDataCollectionValueFromManifest;Lo/logDataCollectionState$onPostMessage;Ljava/lang/Long;Lo/storeDataCollectionValueInSharedPreferences;)V

    return-void
.end method

.method static synthetic access$1200(Lo/logDataCollectionState$extraCallback;)Lo/getDataCollectionValueFromManifest;
    .locals 0

    .line 77
    iget-object p0, p0, Lo/logDataCollectionState$extraCallback;->resultCallback:Lo/getDataCollectionValueFromManifest;

    return-object p0
.end method

.method static synthetic access$900(Lo/logDataCollectionState$extraCallback;)Lo/logDataCollectionState$onPostMessage;
    .locals 0

    .line 77
    iget-object p0, p0, Lo/logDataCollectionState$extraCallback;->query:Lo/logDataCollectionState$onPostMessage;

    return-object p0
.end method


# virtual methods
.method public getHashFunction()Lo/storeDataCollectionValueInSharedPreferences;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/logDataCollectionState$extraCallback;->hashFunction:Lo/storeDataCollectionValueInSharedPreferences;

    return-object v0
.end method

.method public getQuery()Lo/logDataCollectionState$onPostMessage;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/logDataCollectionState$extraCallback;->query:Lo/logDataCollectionState$onPostMessage;

    return-object v0
.end method

.method public getTag()Ljava/lang/Long;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/logDataCollectionState$extraCallback;->tag:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/logDataCollectionState$extraCallback;->query:Lo/logDataCollectionState$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/logDataCollectionState$extraCallback;->tag:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
