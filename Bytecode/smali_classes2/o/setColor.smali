.class final synthetic Lo/setColor;
.super Ljava/lang/Object;

# interfaces
.implements Lo/DataList;


# instance fields
.field private final onMessageChannelReady:I

.field private final onPostMessage:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/setColor;->onMessageChannelReady:I

    iput-object p2, p0, Lo/setColor;->onPostMessage:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/util/JsonWriter;)V
    .locals 2

    iget v0, p0, Lo/setColor;->onMessageChannelReady:I

    iget-object v1, p0, Lo/setColor;->onPostMessage:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lo/getCurrencyType;->onPostMessage(ILjava/util/Map;Landroid/util/JsonWriter;)V

    return-void
.end method
