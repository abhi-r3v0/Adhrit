.class Lo/QueueFileLogStore$LogBytes$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFileLogStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/QueueFileLogStore$LogBytes;->build()Lo/QueueFileLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/QueueFileLogStore$LogBytes;


# direct methods
.method constructor <init>(Lo/QueueFileLogStore$LogBytes;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lo/QueueFileLogStore$LogBytes$4;->this$0:Lo/QueueFileLogStore$LogBytes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 127
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 129
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lo/QueueFileLogStore$LogBytes$4;->encode(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encode(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    new-instance v6, Lo/configure;

    iget-object v0, p0, Lo/QueueFileLogStore$LogBytes$4;->this$0:Lo/QueueFileLogStore$LogBytes;

    .line 120
    invoke-static {v0}, Lo/QueueFileLogStore$LogBytes;->access$100(Lo/QueueFileLogStore$LogBytes;)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lo/QueueFileLogStore$LogBytes$4;->this$0:Lo/QueueFileLogStore$LogBytes;

    invoke-static {v0}, Lo/QueueFileLogStore$LogBytes;->access$200(Lo/QueueFileLogStore$LogBytes;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lo/QueueFileLogStore$LogBytes$4;->this$0:Lo/QueueFileLogStore$LogBytes;

    invoke-static {v0}, Lo/QueueFileLogStore$LogBytes;->access$300(Lo/QueueFileLogStore$LogBytes;)Lo/QueueFile$1;

    move-result-object v4

    iget-object v0, p0, Lo/QueueFileLogStore$LogBytes$4;->this$0:Lo/QueueFileLogStore$LogBytes;

    invoke-static {v0}, Lo/QueueFileLogStore$LogBytes;->access$400(Lo/QueueFileLogStore$LogBytes;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lo/configure;-><init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Lo/QueueFile$1;Z)V

    const/4 p2, 0x0

    .line 121
    invoke-virtual {v6, p1, p2}, Lo/configure;->add(Ljava/lang/Object;Z)Lo/configure;

    .line 122
    invoke-virtual {v6}, Lo/configure;->close()V

    return-void
.end method
