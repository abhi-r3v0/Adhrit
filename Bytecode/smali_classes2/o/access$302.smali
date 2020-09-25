.class final synthetic Lo/access$302;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/getGaid;

.field private final onMessageChannelReady:Lo/SuggestedAmount;

.field private final onNavigationEvent:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lo/getGaid;Lorg/json/JSONObject;Lo/SuggestedAmount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/access$302;->extraCallback:Lo/getGaid;

    iput-object p2, p0, Lo/access$302;->onNavigationEvent:Lorg/json/JSONObject;

    iput-object p3, p0, Lo/access$302;->onMessageChannelReady:Lo/SuggestedAmount;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/access$302;->extraCallback:Lo/getGaid;

    iget-object v1, p0, Lo/access$302;->onNavigationEvent:Lorg/json/JSONObject;

    iget-object v2, p0, Lo/access$302;->onMessageChannelReady:Lo/SuggestedAmount;

    invoke-virtual {v0, v1, v2}, Lo/getGaid;->onNavigationEvent(Lorg/json/JSONObject;Lo/SuggestedAmount;)V

    return-void
.end method
