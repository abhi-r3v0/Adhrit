.class final synthetic Lo/getMeta;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final onMessageChannelReady:Lo/SubProvider;


# direct methods
.method constructor <init>(Lo/SubProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getMeta;->onMessageChannelReady:Lo/SubProvider;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 0

    iget-object p1, p0, Lo/getMeta;->onMessageChannelReady:Lo/SubProvider;

    invoke-virtual {p1}, Lo/SubProvider;->onPostMessage()V

    return-void
.end method
