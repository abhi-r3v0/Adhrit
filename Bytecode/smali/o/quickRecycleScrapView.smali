.class public final Lo/quickRecycleScrapView;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[Ljava/lang/annotation/Annotation;

.field private final extraCallback:Ljava/lang/reflect/Type;

.field private final onPostMessage:Lo/NodeFromJSON;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Lo/NodeFromJSON;[Ljava/lang/annotation/Annotation;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lo/quickRecycleScrapView;->extraCallback:Ljava/lang/reflect/Type;

    .line 26
    iput-object p2, p0, Lo/quickRecycleScrapView;->onPostMessage:Lo/NodeFromJSON;

    if-nez p3, :cond_0

    const/4 p1, 0x0

    new-array p3, p1, [Ljava/lang/annotation/Annotation;

    .line 27
    :cond_0
    iput-object p3, p0, Lo/quickRecycleScrapView;->ICustomTabsCallback:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method final onNavigationEvent(Lo/getChildKey;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getChildKey;",
            ")TE;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    iget-object v1, p0, Lo/quickRecycleScrapView;->onPostMessage:Lo/NodeFromJSON;

    iget-object v2, p0, Lo/quickRecycleScrapView;->extraCallback:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lo/quickRecycleScrapView;->ICustomTabsCallback:[Ljava/lang/annotation/Annotation;

    .line 1313
    invoke-virtual {v1, v2, v3}, Lo/NodeFromJSON;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lo/ensureIndexed;

    move-result-object v1

    .line 36
    invoke-interface {v1, p1}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    const-string p1, "ErrorConverter"

    const-string/jumbo v1, "tag"

    .line 39
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "error in convert: "

    .line 2065
    invoke-static {p1, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method
