.class abstract Lo/LoanStatusResponse$BankDetails;
.super Ljava/lang/Object;


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Throwable;

    sput-object v0, Lo/LoanStatusResponse$BankDetails;->ICustomTabsCallback:[Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
.end method
