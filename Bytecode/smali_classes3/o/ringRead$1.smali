.class final Lo/ringRead$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ringRead;-><init>(Lo/setCrashlyticsDataCollectionEnabled;Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/ringRead;


# direct methods
.method constructor <init>(Lo/ringRead;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/ringRead$1;->this$0:Lo/ringRead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 143
    iget-object v0, p0, Lo/ringRead$1;->this$0:Lo/ringRead;

    invoke-static {v0}, Lo/ringRead;->access$000(Lo/ringRead;)V

    return-void
.end method
