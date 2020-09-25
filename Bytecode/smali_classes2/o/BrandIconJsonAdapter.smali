.class final synthetic Lo/BrandIconJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadConfigJsonAdapter;


# instance fields
.field private final onMessageChannelReady:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;


# direct methods
.method constructor <init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/BrandIconJsonAdapter;->onMessageChannelReady:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    return-void
.end method


# virtual methods
.method public final extraCallback(Z)V
    .locals 0

    iget-object p1, p0, Lo/BrandIconJsonAdapter;->onMessageChannelReady:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object p1, p1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->mayLaunchUrl()V

    return-void
.end method
