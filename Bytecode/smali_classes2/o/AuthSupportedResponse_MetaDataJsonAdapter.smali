.class final Lo/AuthSupportedResponse_MetaDataJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getSpendType;


# instance fields
.field private final synthetic onMessageChannelReady:Ljava/lang/String;

.field private final synthetic onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/AuthSupportedResponse$MetaData;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lo/AuthSupportedResponse_MetaDataJsonAdapter;->onPostMessage:Landroid/content/Context;

    iput-object p3, p0, Lo/AuthSupportedResponse_MetaDataJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/AuthSupportedResponse_MetaDataJsonAdapter;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/AuthSupportedResponse_MetaDataJsonAdapter;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
