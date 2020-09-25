.class final Lo/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/ZeroSpinsLeftMetaJsonAdapter;


# direct methods
.method constructor <init>(Lo/ZeroSpinsLeftMetaJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ZeroSpinsLeftMetaJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/SpinTheWheelFragment$startButtonAnimation$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/ZeroSpinsLeftMetaJsonAdapter;

    invoke-static {v0}, Lo/ZeroSpinsLeftMetaJsonAdapter;->onMessageChannelReady(Lo/ZeroSpinsLeftMetaJsonAdapter;)V

    return-void
.end method
