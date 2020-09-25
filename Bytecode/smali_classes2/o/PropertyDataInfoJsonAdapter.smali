.class final Lo/PropertyDataInfoJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setLastItem;

.field private final synthetic onMessageChannelReady:Lo/Info;

.field private final synthetic onPostMessage:Lo/SmartStatementResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/SmartStatementResponseJsonAdapter;Lo/setLastItem;Lo/Info;)V
    .locals 0

    iput-object p1, p0, Lo/PropertyDataInfoJsonAdapter;->onPostMessage:Lo/SmartStatementResponseJsonAdapter;

    iput-object p2, p0, Lo/PropertyDataInfoJsonAdapter;->extraCallback:Lo/setLastItem;

    iput-object p3, p0, Lo/PropertyDataInfoJsonAdapter;->onMessageChannelReady:Lo/Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/PropertyDataInfoJsonAdapter;->onPostMessage:Lo/SmartStatementResponseJsonAdapter;

    iget-object v1, p0, Lo/PropertyDataInfoJsonAdapter;->extraCallback:Lo/setLastItem;

    iget-object v2, p0, Lo/PropertyDataInfoJsonAdapter;->onMessageChannelReady:Lo/Info;

    invoke-static {v0, v1, v2}, Lo/SmartStatementResponseJsonAdapter;->onMessageChannelReady(Lo/SmartStatementResponseJsonAdapter;Lo/setLastItem;Lo/Info;)V

    return-void
.end method
