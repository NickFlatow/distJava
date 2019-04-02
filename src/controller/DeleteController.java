package controller;

import model.Item;
import model.ItemCatalog;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class DeleteController extends HttpServlet {
    private String RESULT_PAGE = "cart.jsp";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    } // </editor-fold>

    /**
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");

        //get the product we are removing from the cart
        String product = request.getParameter("product");

        // Get an array of Cookies associated with the this domain
        Cookie cookie = null;
        Cookie[] cookies = request.getCookies();

        List<Item> items = new ArrayList<>();
        items.add(new Item(0," ",0.0," "," ",false));
        if( cookies != null ) {
            for (int i = 0; i < cookies.length; i++) {
                cookie = cookies[i];
                if (cookie.getName().equals("cartItem")) {
                    items = orderedItems( cookie.getValue(),1 );
                }
            }
        }
        request.setAttribute("catalog", items);
        // This object lets you forward both the request and response
        // objects to a destination page
        RequestDispatcher view =
                request.getRequestDispatcher(RESULT_PAGE);
        view.forward(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Main Controller";
    }// </editor-fold>

    protected List<Item> orderedItems(String itemsNumbers, int removeNumber) {
        List<Item> items = new ArrayList<>();
        ItemCatalog cat = new ItemCatalog();
        String[] nums = itemsNumbers.split(",");
        for (int i=0;i<nums.length;i++) {
            if (i != removeNumber) {
                items.add(cat.getSingleItem(Integer.parseInt(nums[i])));
            }
        }
        return items;
    }
}
