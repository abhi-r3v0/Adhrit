.class final Lo/AuxiliaryAttributes;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/Footer;

.field private final synthetic onMessageChannelReady:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getApplication;Lo/Footer;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lo/AuxiliaryAttributes;->ICustomTabsCallback:Lo/Footer;

    iput-object p3, p0, Lo/AuxiliaryAttributes;->onMessageChannelReady:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/AuxiliaryAttributes;->ICustomTabsCallback:Lo/Footer;

    iget-object v1, p0, Lo/AuxiliaryAttributes;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/Footer;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
