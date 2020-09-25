.class final synthetic Lo/getWaiverType;
.super Ljava/lang/Object;

# interfaces
.implements Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# static fields
.field static final onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getWaiverType;

    invoke-direct {v0}, Lo/getWaiverType;-><init>()V

    sput-object v0, Lo/getWaiverType;->onNavigationEvent:Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;

    invoke-static {p1, p2}, Lo/StatementResponse$Waiver;->extraCallback(Lo/DigestFragment$digestStoryListener$1$storyResume$$inlined$executeOnResume$1;Ljava/util/Map;)V

    return-void
.end method
