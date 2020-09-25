.class final Lo/getFirstChild$ICustomTabsCallback$Stub;
.super Lo/getFirstChild;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFirstChild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getFirstChild<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/shouldIncludeField;

.field private final onPostMessage:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "TT;",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/shouldIncludeField;Lo/ensureIndexed;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/shouldIncludeField;",
            "Lo/ensureIndexed<",
            "TT;",
            "Lo/isCompleteForPath;",
            ">;)V"
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Lo/getFirstChild;-><init>()V

    .line 277
    iput-object p1, p0, Lo/getFirstChild$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/shouldIncludeField;

    .line 278
    iput-object p2, p0, Lo/getFirstChild$ICustomTabsCallback$Stub;->onPostMessage:Lo/ensureIndexed;

    return-void
.end method


# virtual methods
.method final onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getMaxNode;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 286
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/getFirstChild$ICustomTabsCallback$Stub;->onPostMessage:Lo/ensureIndexed;

    invoke-interface {v0, p2}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isCompleteForPath;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    iget-object p2, p0, Lo/getFirstChild$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/shouldIncludeField;

    .line 1177
    iget-object p1, p1, Lo/getMaxNode;->asBinder:Lo/serializedName$onMessageChannelReady;

    .line 1318
    invoke-static {p2, v0}, Lo/serializedName$ICustomTabsCallback;->onPostMessage(Lo/shouldIncludeField;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object p2

    .line 1334
    iget-object p1, p1, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception p1

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to convert "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to RequestBody"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
