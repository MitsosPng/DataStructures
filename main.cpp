#include <iostream>
#include <random>
#include <functional>
#include <chrono>

using namespace std;
//Struct node
struct Node{
    int data;//data
    struct Node* next;//pointer to next node
};

//Linked list class
class linked_list{
private:
    Node *head,*temp,*tail;
public:
    //Initialization of linked list
    linked_list()
    {head=NULL;
    temp=NULL;
    tail=NULL;
    }

    //Method for adding new node to list
    void add_Node(int n)
    {
        Node *tmp = new Node;
        tmp->data = n;
        tmp->next = NULL;

        if(head == NULL)
        {
            head = tmp;
            tail = tmp;
        }
        else
        {
            tail->next = tmp;
            tail = tail->next;
        }
    }
    //Method for getting the head of the list
    Node* gethead()
    {
        return head;
    }

//Recursive method for displaying all nodes
    static void display(Node *head)
    {
        if(head == NULL)
        {
            cout  << endl;
        }
        else
        {
            cout << head->data << " ";
            display(head->next);
        }
    }

    //Method for deleting all nodes with given data
     void DeleteNode(int delData){

        temp=head;

        while(head->data==delData && head->next!=NULL){
            head=head->next;

        }
        while (temp->next != NULL)
        {
            if (temp->next->data == delData)
            {
                temp->next = temp->next->next;
            }
            else
            {
                temp = temp->next;
            }
        }



        }
    };



int main() {
    //seed for generating truly random numbers by clock
    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();
    default_random_engine generator(seed);//generator
    uniform_int_distribution<int> list_size_distribution(20, 70);//bounds for list size
    uniform_int_distribution<int> data_element_distribution(1, 30);//bounds for data element
    auto random_list_size = bind(list_size_distribution, generator);
    auto random_element = bind(data_element_distribution, generator);

    //User input of number of lists
    int n_oflists;
    cout << "Give number of lists" << endl;
    cin>>n_oflists;
//Array for counters
   int counterarray[30]={0};

//Loop for creating every list the user entered
    for(int j=1; j<=n_oflists; j++) {
        linked_list temp;

        //initialization of each list with random size
        int i = 0;
        while (i < random_list_size()) {
            //every node with random numbers
            temp.add_Node(random_element());
            i++;
        }
        //method for displaying list
        cout << "List_" << j << ": ";
        temp.display(temp.gethead());


        Node *tp;
        tp = temp.gethead();
        //for every list we delete the nodes that may appear more than one time and we add them to the counter array
        while (tp!=NULL) {
            //cout <<  tp->data << endl;
            counterarray[tp->data-1]++;

            temp.DeleteNode(tp->data);

            if(tp->next!=NULL && tp!=NULL){
             tp = tp->next;
            }else{break;}

        }

    }


   /* for (int i=0;i<20;i++){
        cout<<counterarray[i]<<" ";
    }*/
//creating the output list
//if a number is shown in more than half lists we add it to the list
    linked_list output;
    for (int i=0;i<30;i++){
        if(counterarray[i]>n_oflists/2){
            output.add_Node(i+1);
        }
    }

    cout<<endl<<"Output List created: ";
    output.display(output.gethead());



    return 0;
}

