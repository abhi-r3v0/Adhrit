.class final synthetic Lo/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/FileUploadResponseJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Lo/OnboardCardsData;


# direct methods
.method private constructor <init>(Lo/OnboardCardsData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/OnboardCardsData;

    return-void
.end method

.method static ICustomTabsCallback(Lo/OnboardCardsData;)Lo/FileUploadResponseJsonAdapter;
    .locals 1

    new-instance v0, Lo/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;

    invoke-direct {v0, p0}, Lo/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;-><init>(Lo/OnboardCardsData;)V

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/OnboardMachineInternalFragment$onViewCreated$3$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/OnboardCardsData;

    invoke-interface {v0}, Lo/OnboardCardsData;->ICustomTabsCallback()V

    return-void
.end method
